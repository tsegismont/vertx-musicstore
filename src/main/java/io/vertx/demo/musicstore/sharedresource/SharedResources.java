/*
 * Copyright 2017 Red Hat, Inc.
 *
 * Red Hat licenses this file to you under the Apache License, version 2.0
 * (the "License"); you may not use this file except in compliance with the
 * License.  You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */

package io.vertx.demo.musicstore.sharedresource;

import io.vertx.core.shareddata.Shareable;

import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Supplier;

/**
 * @author Thomas Segismont
 */
public enum SharedResources {
  INSTANCE;

  private Map<Object, Holder> cache = new HashMap<>();


  /**
   * Create or retrieve a resource.
   *
   * @param key      the resource key
   * @param factory  invoked if the resource does not exist yet
   * @param disposer invoked when the resource is no longer used
   * @return the shared resource
   */
  public synchronized <R> SharedResource<R> getOrCreate(Object key, Supplier<R> factory, Consumer<R> disposer) {
    @SuppressWarnings("unchecked")
    Holder<R> holder = cache.get(key);
    if (holder == null) {
      R resource = factory.get();
      holder = new Holder<>(resource, disposer);
      cache.put(key, holder);
    }
    R resource = holder.resource;
    holder.refCount++;
    return new SharedResourceImpl<>(key, resource);
  }


  private synchronized <R> void release(Object key) {
    @SuppressWarnings("unchecked")
    Holder<R> holder = cache.get(key);
    if (holder != null && --holder.refCount < 1) {
      try {
        Consumer<R> disposer = holder.disposer;
        R resource = holder.resource;
        disposer.accept(resource);
      } finally {
        cache.remove(key);
      }
    }
  }

  private static class Holder<R> implements Shareable {
    final R resource;
    final Consumer<R> disposer;

    int refCount;

    Holder(R resource, Consumer<R> disposer) {
      this.resource = resource;
      this.disposer = disposer;
    }
  }

  private class SharedResourceImpl<R> implements SharedResource<R> {

    final Object key;
    final R resource;

    SharedResourceImpl(Object key, R resource) {
      this.key = key;
      this.resource = resource;
    }

    @Override
    public R get() {
      return resource;
    }

    @Override
    public void release() {
      SharedResources.this.release(key);
    }
  }
}
