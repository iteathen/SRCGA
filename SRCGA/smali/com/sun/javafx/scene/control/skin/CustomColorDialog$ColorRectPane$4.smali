.class Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$4;
.super Ljavafx/beans/property/SimpleIntegerProperty;
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
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;I)V
    .locals 5

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$4;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$4;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$4;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$4;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$400(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$4;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$402(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;Z)Z

    move-result v1

    .line 263
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$4;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$600(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)V

    .line 264
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$4;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$402(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;Z)Z

    move-result v1

    .line 266
    :cond_0
    return-void
.end method
