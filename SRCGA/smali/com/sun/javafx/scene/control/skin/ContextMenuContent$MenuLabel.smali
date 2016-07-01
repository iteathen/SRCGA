.class Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuLabel;
.super Ljavafx/scene/control/Label;
.source "ContextMenuContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuLabel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Ljavafx/scene/control/MenuItem;Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;)V
    .locals 6

    .prologue
    .line 1607
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuLabel;
    move-object v1, p1

    move-object v2, p2

    .local v2, "item":Ljavafx/scene/control/MenuItem;
    move-object v3, p3

    .local v3, "mic":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuItemContainer;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuLabel;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    .line 1608
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/MenuItem;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavafx/scene/control/Label;-><init>(Ljava/lang/String;)V

    .line 1609
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/MenuItem;->isMnemonicParsing()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuLabel;->setMnemonicParsing(Z)V

    .line 1610
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuLabel;->setLabelFor(Ljavafx/scene/Node;)V

    .line 1611
    return-void
.end method
