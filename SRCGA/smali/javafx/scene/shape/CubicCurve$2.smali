.class Ljavafx/scene/shape/CubicCurve$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "CubicCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/CubicCurve;->startYProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/CubicCurve;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/CubicCurve;)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/CubicCurve;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/CubicCurve$2;->this$0:Ljavafx/scene/shape/CubicCurve;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve$2;->this$0:Ljavafx/scene/shape/CubicCurve;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurve$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve$2;
    const-string v1, "startY"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/CubicCurve$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/CubicCurve$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve$2;->this$0:Ljavafx/scene/shape/CubicCurve;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/CubicCurve;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 160
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/CubicCurve$2;->this$0:Ljavafx/scene/shape/CubicCurve;

    invoke-static {v1}, Ljavafx/scene/shape/CubicCurve;->access$100(Ljavafx/scene/shape/CubicCurve;)V

    .line 161
    return-void
.end method