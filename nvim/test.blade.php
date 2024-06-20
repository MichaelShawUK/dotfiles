<div>
<p>hello world</p>
</div>

@if (true)
<p>It's true</p>
@endif

@php
$string = "hello";
@endphp

@php
<em>123</em>
@endphp

@props(['type' => 'text', 'class' => 'font-bold'])

<x-form>
<label class="{{ $class }}">Name</label>
<input type="{{ $type }}" />
</x-form>
