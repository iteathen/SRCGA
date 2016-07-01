.class Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$3;
.super Ljavafx/scene/layout/StackPane;
.source "ScrollPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)V
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/StackPane;-><init>()V

    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 6

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$2300(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$3;->getWidth()D

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$3;->getHeight()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 252
    return-void
.end method
