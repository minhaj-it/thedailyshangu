<ul class="navbar-nav mx-auto">
    @foreach ($menu_nodes as $node)
        @if ($node->url == '#divider' || $node->title == '---')
            <li><hr class="dropdown-divider"></li>
        @else
            <li class="nav-item @if ($node->has_child) dropdown @endif {{ $node->css_class }} @if ($node->active) active @endif">
                <a class="nav-link @if ($node->has_child) dropdown-toggle @endif" 
                   href="{{ $node->url }}" 
                   target="{{ $node->target }}">
                    @if ($node->icon_font) <i class="{{ $node->icon_font }}"></i> @endif {{ $node->title }}
                </a>
                @if ($node->has_child)
                    <ul class="dropdown-menu">
                        @foreach ($node->child as $child_node)
                             @if ($child_node->url == '#divider' || $child_node->title == '---')
                                <li><hr class="dropdown-divider"></li>
                             @else
                                <li>
                                    <a class="dropdown-item" href="{{ $child_node->url }}" target="{{ $child_node->target }}">
                                       @if ($child_node->icon_font) <i class="{{ $child_node->icon_font }}"></i> @endif {{ $child_node->title }}
                                    </a>
                                </li>
                             @endif
                        @endforeach
                    </ul>
                @endif
            </li>
        @endif
    @endforeach
</ul>