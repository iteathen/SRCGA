.class Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;
.super Ljavafx/scene/control/Button;
.source "EmbeddedTextContextMenuContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuItemContainer"
.end annotation


# instance fields
.field private item:Ljavafx/scene/control/MenuItem;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;Ljavafx/scene/control/MenuItem;)V
    .locals 5

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
    move-object v2, p2

    .local v2, "item":Ljavafx/scene/control/MenuItem;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/Button;-><init>()V

    .line 167
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/MenuItem;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 168
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/MenuItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;->setId(Ljava/lang/String;)V

    .line 169
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    .line 170
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/MenuItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;->setText(Ljava/lang/String;)V

    .line 171
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/MenuItem;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;->setStyle(Ljava/lang/String;)V

    .line 174
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/MenuItem;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 175
    return-void
.end method


# virtual methods
.method public fire()V
    .locals 5

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    new-instance v2, Ljavafx/event/ActionEvent;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-static {v1, v2}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 183
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuItem;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "refreshMenu"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;->this$0:Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->access$000(Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;Ljavafx/scene/control/MenuItem;)V

    goto :goto_0
.end method

.method public getItem()Ljavafx/scene/control/MenuItem;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;->item:Ljavafx/scene/control/MenuItem;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$MenuItemContainer;
    return-object v0
.end method
