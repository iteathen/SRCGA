.class Ljavafx/scene/transform/Translate$1;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Translate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/transform/Translate;->xProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/transform/Translate;


# direct methods
.method constructor <init>(Ljavafx/scene/transform/Translate;)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/transform/Translate;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/transform/Translate$1;->this$0:Ljavafx/scene/transform/Translate;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Translate$1;->this$0:Ljavafx/scene/transform/Translate;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Translate$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate$1;
    const-string v1, "x"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Translate$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Translate$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Translate$1;->this$0:Ljavafx/scene/transform/Translate;

    invoke-virtual {v1}, Ljavafx/scene/transform/Translate;->transformChanged()V

    .line 105
    return-void
.end method
