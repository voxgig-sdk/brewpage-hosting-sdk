<?php
declare(strict_types=1);

// BrewpageHosting SDK base feature

class BrewpageHostingBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    // Positions this feature when added via the client `extend` option:
    // "__before__" / "__after__" / "__replace__" name an already-added
    // feature (mirrors the ts feature `_options`). Declared so setting it
    // on an extension instance avoids the dynamic-property deprecation.
    public ?array $_options = null;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(BrewpageHostingContext $ctx, array $options): void {}
    public function PostConstruct(BrewpageHostingContext $ctx): void {}
    public function PostConstructEntity(BrewpageHostingContext $ctx): void {}
    public function SetData(BrewpageHostingContext $ctx): void {}
    public function GetData(BrewpageHostingContext $ctx): void {}
    public function GetMatch(BrewpageHostingContext $ctx): void {}
    public function SetMatch(BrewpageHostingContext $ctx): void {}
    public function PrePoint(BrewpageHostingContext $ctx): void {}
    public function PreSpec(BrewpageHostingContext $ctx): void {}
    public function PreRequest(BrewpageHostingContext $ctx): void {}
    public function PreResponse(BrewpageHostingContext $ctx): void {}
    public function PreResult(BrewpageHostingContext $ctx): void {}
    public function PreDone(BrewpageHostingContext $ctx): void {}
    public function PreUnexpected(BrewpageHostingContext $ctx): void {}
}
