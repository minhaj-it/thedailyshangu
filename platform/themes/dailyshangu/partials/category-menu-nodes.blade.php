@if ($menu_nodes->isNotEmpty())
    <div class="list-group list-group-flush category-menu">
        @foreach ($menu_nodes as $node)

            {{-- যদি নোডের সাব-আইটেম (child) থাকে, তবে এটি একটি কলাপস মেনু --}}
            @if ($node->has_child)
                <a href="#submenu-{{ $node->id }}" 
                   data-bs-toggle="collapse" 
                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-center submenu-toggle {{ $node->css_class }} @if ($node->active) active @endif" 
                   aria-expanded="false"
                   target="{{ $node->target }}">
                    
                    @if ($node->icon_font) <i class="{{ $node->icon_font }}"></i> @endif {{ $node->title }}
                    <i class="bi bi-chevron-down"></i>
                </a>
                <div class="collapse submenu" id="submenu-{{ $node->id }}">
                    <div class="list-group list-group-flush">
                        {{-- সাব-আইটেমগুলো লুপের মাধ্যমে দেখান --}}
                        @foreach ($node->child as $child_node)
                            <a href="{{ $child_node->url }}" 
                               class="list-group-item list-group-item-action {{ $child_node->css_class }} @if ($child_node->active) active @endif"
                               target="{{ $child_node->target }}">
                                @if ($child_node->icon_font) <i class="{{ $child_node->icon_font }}"></i> @endif {{ $child_node->title }}
                            </a>
                        @endforeach
                    </div>
                </div>

            {{-- যদি নোডের সাব-আইটেম না থাকে, তবে এটি একটি সাধারণ লিঙ্ক --}}
            @else
                <a href="{{ $node->url }}" 
                   class="list-group-item list-group-item-action {{ $node->css_class }} @if ($node->active) active @endif"
                   target="{{ $node->target }}">
                    @if ($node->icon_font) <i class="{{ $node->icon_font }}"></i> @endif {{ $node->title }}
                </a>
            @endif

        @endforeach
    </div>
@endif