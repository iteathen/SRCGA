.class Ljavafx/scene/transform/Scale$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Scale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/transform/Scale;->yProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/transform/Scale;


# direct methods
.method constructor <init>(Ljavafx/scene/transform/Scale;D)V
    .locals 8

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/transform/Scale;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/transform/Scale$2;->this$0:Ljavafx/scene/transform/Scale;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Scale$2;->this$0:Ljavafx/scene/transform/Scale;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Scale$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale$2;
    const-string v1, "y"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Scale$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Scale$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Scale$2;->this$0:Ljavafx/scene/transform/Scale;

    invoke-virtual {v1}, Ljavafx/scene/transform/Scale;->transformChanged()V

    .line 166
    return-void
.end method
