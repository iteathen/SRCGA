.class Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$9;
.super Ljavafx/beans/binding/ObjectBinding;
.source "CustomColorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/binding/ObjectBinding",
        "<",
        "Ljavafx/scene/layout/Background;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

.field final synthetic val$this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V
    .locals 9

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$9;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$9;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$9;->val$this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/ObjectBinding;-><init>()V

    .line 371
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$9;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$900(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$9;->bind([Ljavafx/beans/Observable;)V

    .line 372
    return-void
.end method


# virtual methods
.method protected bridge synthetic computeValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$9;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$9;->computeValue()Ljavafx/scene/layout/Background;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$9;
    return-object v0
.end method

.method protected computeValue()Ljavafx/scene/layout/Background;
    .locals 15

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$9;
    new-instance v1, Ljavafx/scene/layout/Background;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/scene/layout/BackgroundFill;

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    const/4 v5, 0x0

    new-instance v6, Ljavafx/scene/layout/BackgroundFill;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$9;->this$1:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    .line 376
    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$900(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v8 .. v13}, Ljavafx/scene/paint/Color;->hsb(DDD)Ljavafx/scene/paint/Color;

    move-result-object v8

    sget-object v9, Ljavafx/scene/layout/CornerRadii;->EMPTY:Ljavafx/scene/layout/CornerRadii;

    sget-object v10, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/layout/BackgroundFill;-><init>(Ljavafx/scene/paint/Paint;Ljavafx/scene/layout/CornerRadii;Ljavafx/geometry/Insets;)V

    aput-object v6, v4, v5

    invoke-direct {v2, v3}, Ljavafx/scene/layout/Background;-><init>([Ljavafx/scene/layout/BackgroundFill;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$9;
    return-object v0
.end method
