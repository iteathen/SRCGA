.class Lcom/sun/javafx/scene/control/GlobalMenuAdapter$MenuItemAdapter;
.super Ljavafx/scene/control/MenuItem;
.source "GlobalMenuAdapter.java"

# interfaces
.implements Lcom/sun/javafx/menu/MenuItemBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuItemAdapter"
.end annotation


# instance fields
.field private menuItem:Ljavafx/scene/control/MenuItem;


# direct methods
.method private constructor <init>(Ljavafx/scene/control/MenuItem;)V
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$MenuItemAdapter;
    move-object v1, p1

    .local v1, "menuItem":Ljavafx/scene/control/MenuItem;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavafx/scene/control/MenuItem;-><init>(Ljava/lang/String;)V

    .line 171
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$MenuItemAdapter;->menuItem:Ljavafx/scene/control/MenuItem;

    .line 173
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->access$700(Ljavafx/scene/control/MenuItem;Ljavafx/scene/control/MenuItem;)V

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/control/MenuItem;Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;)V
    .locals 5

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$MenuItemAdapter;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/control/MenuItem;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$MenuItemAdapter;-><init>(Ljavafx/scene/control/MenuItem;)V

    return-void
.end method


# virtual methods
.method public fireValidation()V
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$MenuItemAdapter;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$MenuItemAdapter;->menuItem:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->getOnMenuValidation()Ljavafx/event/EventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 179
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$MenuItemAdapter;->menuItem:Ljavafx/scene/control/MenuItem;

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/MenuItem;->MENU_VALIDATION_EVENT:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 181
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$MenuItemAdapter;->menuItem:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v2

    move-object v1, v2

    .line 182
    .local v1, "target":Ljavafx/scene/control/Menu;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->getOnMenuValidation()Ljavafx/event/EventHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 183
    move-object v2, v1

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/MenuItem;->MENU_VALIDATION_EVENT:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 185
    :cond_1
    return-void
.end method
