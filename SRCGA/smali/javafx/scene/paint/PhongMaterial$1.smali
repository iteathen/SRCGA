.class Ljavafx/scene/paint/PhongMaterial$1;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "PhongMaterial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/paint/PhongMaterial;->diffuseColorProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/scene/paint/Color;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/paint/PhongMaterial;


# direct methods
.method constructor <init>(Ljavafx/scene/paint/PhongMaterial;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/paint/PhongMaterial;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/paint/PhongMaterial$1;->this$0:Ljavafx/scene/paint/PhongMaterial;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial$1;->this$0:Ljavafx/scene/paint/PhongMaterial;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljavafx/scene/paint/PhongMaterial;->access$002(Ljavafx/scene/paint/PhongMaterial;Z)Z

    move-result v1

    .line 145
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial$1;->this$0:Ljavafx/scene/paint/PhongMaterial;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/paint/PhongMaterial;->setDirty(Z)V

    .line 146
    return-void
.end method
