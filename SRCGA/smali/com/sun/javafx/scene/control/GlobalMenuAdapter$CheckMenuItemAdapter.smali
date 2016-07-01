.class Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CheckMenuItemAdapter;
.super Ljavafx/scene/control/CheckMenuItem;
.source "GlobalMenuAdapter.java"

# interfaces
.implements Lcom/sun/javafx/menu/CheckMenuItemBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckMenuItemAdapter"
.end annotation


# instance fields
.field private menuItem:Ljavafx/scene/control/CheckMenuItem;


# direct methods
.method private constructor <init>(Ljavafx/scene/control/CheckMenuItem;)V
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CheckMenuItemAdapter;
    move-object v1, p1

    .local v1, "menuItem":Ljavafx/scene/control/CheckMenuItem;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/CheckMenuItem;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavafx/scene/control/CheckMenuItem;-><init>(Ljava/lang/String;)V

    .line 193
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CheckMenuItemAdapter;->menuItem:Ljavafx/scene/control/CheckMenuItem;

    .line 195
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->access$700(Ljavafx/scene/control/MenuItem;Ljavafx/scene/control/MenuItem;)V

    .line 197
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CheckMenuItemAdapter;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/CheckMenuItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->bindBidirectional(Ljavafx/beans/property/Property;)V

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/control/CheckMenuItem;Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;)V
    .locals 5

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CheckMenuItemAdapter;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/control/CheckMenuItem;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CheckMenuItemAdapter;-><init>(Ljavafx/scene/control/CheckMenuItem;)V

    return-void
.end method


# virtual methods
.method public fireValidation()V
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CheckMenuItemAdapter;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CheckMenuItemAdapter;->getOnMenuValidation()Ljavafx/event/EventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 203
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CheckMenuItemAdapter;->menuItem:Ljavafx/scene/control/CheckMenuItem;

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CheckMenuItemAdapter;->MENU_VALIDATION_EVENT:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 205
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$CheckMenuItemAdapter;->menuItem:Ljavafx/scene/control/CheckMenuItem;

    invoke-virtual {v2}, Ljavafx/scene/control/CheckMenuItem;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v2

    move-object v1, v2

    .line 206
    .local v1, "target":Ljavafx/scene/control/Menu;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->getOnMenuValidation()Ljavafx/event/EventHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 207
    move-object v2, v1

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/MenuItem;->MENU_VALIDATION_EVENT:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 209
    :cond_1
    return-void
.end method
