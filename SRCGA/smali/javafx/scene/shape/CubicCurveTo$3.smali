.class Ljavafx/scene/shape/CubicCurveTo$3;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "CubicCurveTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/CubicCurveTo;->controlX2Property()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/CubicCurveTo;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/CubicCurveTo;)V
    .locals 4

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurveTo$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/CubicCurveTo;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/CubicCurveTo$3;->this$0:Ljavafx/scene/shape/CubicCurveTo;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurveTo$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurveTo$3;->this$0:Ljavafx/scene/shape/CubicCurveTo;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurveTo$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurveTo$3;
    const-string v1, "controlX2"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurveTo$3;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurveTo$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurveTo$3;->this$0:Ljavafx/scene/shape/CubicCurveTo;

    invoke-virtual {v1}, Ljavafx/scene/shape/CubicCurveTo;->u()V

    .line 203
    return-void
.end method
