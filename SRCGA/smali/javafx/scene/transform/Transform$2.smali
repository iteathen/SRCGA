.class Ljavafx/scene/transform/Transform$2;
.super Ljavafx/scene/transform/Transform$LazyBooleanProperty;
.source "Transform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/transform/Transform;->identityProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/transform/Transform;


# direct methods
.method constructor <init>(Ljavafx/scene/transform/Transform;)V
    .locals 4

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/transform/Transform;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/transform/Transform$2;->this$0:Ljavafx/scene/transform/Transform;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/transform/Transform$LazyBooleanProperty;-><init>(Ljavafx/scene/transform/Transform$1;)V

    return-void
.end method


# virtual methods
.method protected computeValue()Z
    .locals 2

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform$2;->this$0:Ljavafx/scene/transform/Transform;

    invoke-virtual {v1}, Ljavafx/scene/transform/Transform;->computeIsIdentity()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform$2;
    return v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform$2;->this$0:Ljavafx/scene/transform/Transform;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform$2;
    const-string v1, "identity"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/Transform$2;
    return-object v0
.end method
