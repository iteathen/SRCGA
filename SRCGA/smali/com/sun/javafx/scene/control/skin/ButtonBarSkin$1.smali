.class Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$1;
.super Ljavafx/scene/layout/HBox;
.source "ButtonBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;-><init>(Ljavafx/scene/control/ButtonBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;D)V
    .locals 8

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/scene/layout/HBox;-><init>(D)V

    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;)V

    .line 97
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/layout/HBox;->layoutChildren()V

    .line 98
    return-void
.end method
