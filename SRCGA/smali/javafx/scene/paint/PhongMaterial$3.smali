.class Ljavafx/scene/paint/PhongMaterial$3;
.super Ljavafx/beans/property/SimpleDoubleProperty;
.source "PhongMaterial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/paint/PhongMaterial;->specularPowerProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/paint/PhongMaterial;


# direct methods
.method constructor <init>(Ljavafx/scene/paint/PhongMaterial;Ljava/lang/Object;Ljava/lang/String;D)V
    .locals 12

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/paint/PhongMaterial;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-wide/from16 v4, p4

    .local v4, "x2":D
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/paint/PhongMaterial$3;->this$0:Ljavafx/scene/paint/PhongMaterial;

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move-wide v9, v4

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method public invalidated()V
    .locals 3

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial$3;->this$0:Ljavafx/scene/paint/PhongMaterial;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljavafx/scene/paint/PhongMaterial;->access$202(Ljavafx/scene/paint/PhongMaterial;Z)Z

    move-result v1

    .line 203
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial$3;->this$0:Ljavafx/scene/paint/PhongMaterial;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/paint/PhongMaterial;->setDirty(Z)V

    .line 204
    return-void
.end method
