.class Ljavafx/scene/transform/Scale$6;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Scale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/transform/Scale;->pivotZProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/transform/Scale;


# direct methods
.method constructor <init>(Ljavafx/scene/transform/Scale;)V
    .locals 4

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/transform/Scale;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/transform/Scale$6;->this$0:Ljavafx/scene/transform/Scale;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Scale$6;->this$0:Ljavafx/scene/transform/Scale;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Scale$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale$6;
    const-string v1, "pivotZ"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Scale$6;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Scale$6;->this$0:Ljavafx/scene/transform/Scale;

    invoke-virtual {v1}, Ljavafx/scene/transform/Scale;->transformChanged()V

    .line 321
    return-void
.end method
