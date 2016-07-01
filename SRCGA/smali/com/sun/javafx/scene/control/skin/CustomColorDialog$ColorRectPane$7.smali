.class Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$7;
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
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$7;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$7;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 15

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$7;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$7;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$400(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$7;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$402(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;Z)Z

    move-result v1

    .line 293
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$7;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    new-instance v2, Ljavafx/scene/paint/Color;

    move-object v14, v2

    move-object v2, v14

    move-object v3, v14

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$7;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    .line 294
    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCustomColor()Ljavafx/scene/paint/Color;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$7;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    .line 295
    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCustomColor()Ljavafx/scene/paint/Color;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$7;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    .line 296
    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCustomColor()Ljavafx/scene/paint/Color;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$7;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    .line 297
    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$700(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->clamp(D)D

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Ljavafx/scene/paint/Color;-><init>(DDDD)V

    .line 293
    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->setCustomColor(Ljavafx/scene/paint/Color;)V

    .line 298
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$7;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$402(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;Z)Z

    move-result v1

    .line 300
    :cond_0
    return-void
.end method
