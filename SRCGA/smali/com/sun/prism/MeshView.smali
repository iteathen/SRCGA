.class public interface abstract Lcom/sun/prism/MeshView;
.super Ljava/lang/Object;
.source "MeshView.java"


# static fields
.field public static final CULL_BACK:I

.field public static final CULL_FRONT:I

.field public static final CULL_NONE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Ljavafx/scene/shape/CullFace;->NONE:Ljavafx/scene/shape/CullFace;

    invoke-virtual {v0}, Ljavafx/scene/shape/CullFace;->ordinal()I

    move-result v0

    sput v0, Lcom/sun/prism/MeshView;->CULL_NONE:I

    .line 38
    sget-object v0, Ljavafx/scene/shape/CullFace;->BACK:Ljavafx/scene/shape/CullFace;

    invoke-virtual {v0}, Ljavafx/scene/shape/CullFace;->ordinal()I

    move-result v0

    sput v0, Lcom/sun/prism/MeshView;->CULL_BACK:I

    .line 39
    sget-object v0, Ljavafx/scene/shape/CullFace;->FRONT:Ljavafx/scene/shape/CullFace;

    invoke-virtual {v0}, Ljavafx/scene/shape/CullFace;->ordinal()I

    move-result v0

    sput v0, Lcom/sun/prism/MeshView;->CULL_FRONT:I

    return-void
.end method


# virtual methods
.method public abstract render(Lcom/sun/prism/Graphics;)V
.end method

.method public abstract setAmbientLight(FFF)V
.end method

.method public abstract setCullingMode(I)V
.end method

.method public abstract setMaterial(Lcom/sun/prism/Material;)V
.end method

.method public abstract setPointLight(IFFFFFFF)V
.end method

.method public abstract setWireframe(Z)V
.end method
