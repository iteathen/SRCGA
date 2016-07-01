.class Ljavafx/scene/shape/QuadCurve$5;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "QuadCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/QuadCurve;->endXProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/QuadCurve;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/QuadCurve;)V
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/QuadCurve;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/QuadCurve$5;->this$0:Ljavafx/scene/shape/QuadCurve;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve$5;->this$0:Ljavafx/scene/shape/QuadCurve;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurve$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve$5;
    const-string v1, "endX"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurve$5;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve$5;->this$0:Ljavafx/scene/shape/QuadCurve;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/QuadCurve;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 271
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve$5;->this$0:Ljavafx/scene/shape/QuadCurve;

    invoke-static {v1}, Ljavafx/scene/shape/QuadCurve;->access$400(Ljavafx/scene/shape/QuadCurve;)V

    .line 272
    return-void
.end method
