.class Ljavafx/scene/transform/Shear$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Shear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/transform/Shear;->yProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/transform/Shear;


# direct methods
.method constructor <init>(Ljavafx/scene/transform/Shear;)V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/transform/Shear;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/transform/Shear$2;->this$0:Ljavafx/scene/transform/Shear;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Shear$2;->this$0:Ljavafx/scene/transform/Shear;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Shear$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear$2;
    const-string v1, "y"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Shear$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Shear$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Shear$2;->this$0:Ljavafx/scene/transform/Shear;

    invoke-virtual {v1}, Ljavafx/scene/transform/Shear;->transformChanged()V

    .line 163
    return-void
.end method
