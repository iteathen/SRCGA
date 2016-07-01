.class Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$3;
.super Ljavafx/beans/property/SimpleDoubleProperty;
.source "CustomColorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;D)V
    .locals 8

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$3;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$3;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$3;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$400(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$3;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$402(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;Z)Z

    move-result v1

    .line 254
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$3;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$500(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)V

    .line 255
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$3;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$402(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;Z)Z

    move-result v1

    .line 257
    :cond_0
    return-void
.end method
