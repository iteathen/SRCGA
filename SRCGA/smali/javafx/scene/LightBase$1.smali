.class Ljavafx/scene/LightBase$1;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "LightBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/LightBase;->colorProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/scene/LightBase;


# direct methods
.method constructor <init>(Ljavafx/scene/LightBase;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/LightBase;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/LightBase$1;->this$0:Ljavafx/scene/LightBase;

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
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/LightBase$1;->this$0:Ljavafx/scene/LightBase;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_LIGHT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/LightBase;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 114
    return-void
.end method
