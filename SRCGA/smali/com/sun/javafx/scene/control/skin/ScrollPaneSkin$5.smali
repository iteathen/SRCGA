.class Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$5;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "ScrollPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->contentPosXProperty()Ljavafx/beans/property/DoubleProperty;
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
    .line 1183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$5;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$5;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$5;
    const-string v1, "contentPosX"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$5;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 1185
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$5;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$2500(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 1186
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->requestLayout()V

    .line 1187
    return-void
.end method
