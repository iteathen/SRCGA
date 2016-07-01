.class Lcom/sun/javafx/scene/control/GlobalMenuAdapter$RadioMenuItemAdapter;
.super Ljavafx/scene/control/RadioMenuItem;
.source "GlobalMenuAdapter.java"

# interfaces
.implements Lcom/sun/javafx/menu/RadioMenuItemBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RadioMenuItemAdapter"
.end annotation


# instance fields
.field private menuItem:Ljavafx/scene/control/RadioMenuItem;


# direct methods
.method private constructor <init>(Ljavafx/scene/control/RadioMenuItem;)V
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$RadioMenuItemAdapter;
    move-object v1, p1

    .local v1, "menuItem":Ljavafx/scene/control/RadioMenuItem;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/RadioMenuItem;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavafx/scene/control/RadioMenuItem;-><init>(Ljava/lang/String;)V

    .line 218
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$RadioMenuItemAdapter;->menuItem:Ljavafx/scene/control/RadioMenuItem;

    .line 220
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->access$700(Ljavafx/scene/control/MenuItem;Ljavafx/scene/control/MenuItem;)V

    .line 222
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$RadioMenuItemAdapter;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/RadioMenuItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->bindBidirectional(Ljavafx/beans/property/Property;)V

    .line 223
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/control/RadioMenuItem;Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;)V
    .locals 5

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$RadioMenuItemAdapter;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/control/RadioMenuItem;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$RadioMenuItemAdapter;-><init>(Ljavafx/scene/control/RadioMenuItem;)V

    return-void
.end method


# virtual methods
.method public fireValidation()V
    .locals 7

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$RadioMenuItemAdapter;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$RadioMenuItemAdapter;->getOnMenuValidation()Ljavafx/event/EventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 228
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$RadioMenuItemAdapter;->menuItem:Ljavafx/scene/control/RadioMenuItem;

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$RadioMenuItemAdapter;->MENU_VALIDATION_EVENT:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 230
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$RadioMenuItemAdapter;->menuItem:Ljavafx/scene/control/RadioMenuItem;

    invoke-virtual {v2}, Ljavafx/scene/control/RadioMenuItem;->getParentMenu()Ljavafx/scene/control/Menu;

    move-result-object v2

    move-object v1, v2

    .line 231
    .local v1, "target":Ljavafx/scene/control/Menu;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->getOnMenuValidation()Ljavafx/event/EventHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 232
    move-object v2, v1

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/MenuItem;->MENU_VALIDATION_EVENT:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 234
    :cond_1
    return-void
.end method
