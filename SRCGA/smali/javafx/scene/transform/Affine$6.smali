.class Ljavafx/scene/transform/Affine$6;
.super Ljavafx/scene/transform/Affine$AffineElementProperty;
.source "Affine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/transform/Affine;->myyProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/transform/Affine;


# direct methods
.method constructor <init>(Ljavafx/scene/transform/Affine;D)V
    .locals 8

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/transform/Affine;
    move-wide v2, p2

    .local v2, "initialValue":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/transform/Affine$6;->this$0:Ljavafx/scene/transform/Affine;

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/transform/Affine$AffineElementProperty;-><init>(Ljavafx/scene/transform/Affine;D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Affine$6;->this$0:Ljavafx/scene/transform/Affine;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Affine$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Affine$6;
    const-string v1, "myy"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Affine$6;
    return-object v0
.end method
