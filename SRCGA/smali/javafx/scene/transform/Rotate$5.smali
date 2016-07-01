.class Ljavafx/scene/transform/Rotate$5;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Rotate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/transform/Rotate;->axisProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/geometry/Point3D;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/transform/Rotate;


# direct methods
.method constructor <init>(Ljavafx/scene/transform/Rotate;Ljavafx/geometry/Point3D;)V
    .locals 5

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/transform/Rotate;
    move-object v2, p2

    .local v2, "x0":Ljavafx/geometry/Point3D;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/transform/Rotate$5;->this$0:Ljavafx/scene/transform/Rotate;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate$5;->this$0:Ljavafx/scene/transform/Rotate;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate$5;
    const-string v1, "axis"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Rotate$5;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Rotate$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Rotate$5;->this$0:Ljavafx/scene/transform/Rotate;

    invoke-virtual {v1}, Ljavafx/scene/transform/Rotate;->transformChanged()V

    .line 339
    return-void
.end method
