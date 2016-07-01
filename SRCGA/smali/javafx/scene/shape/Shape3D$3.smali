.class Ljavafx/scene/shape/Shape3D$3;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "Shape3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Shape3D;->cullFaceProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/scene/shape/CullFace;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/Shape3D;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Shape3D;Ljava/lang/Object;Ljava/lang/String;Ljavafx/scene/shape/CullFace;)V
    .locals 9

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Shape3D;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x2":Ljavafx/scene/shape/CullFace;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/shape/Shape3D$3;->this$0:Ljavafx/scene/shape/Shape3D;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape3D$3;->this$0:Ljavafx/scene/shape/Shape3D;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_CULLFACE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/shape/Shape3D;->access$400(Ljavafx/scene/shape/Shape3D;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 188
    return-void
.end method
