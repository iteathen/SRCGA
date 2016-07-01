.class public interface abstract Lcom/sun/prism/ResourceFactory;
.super Ljava/lang/Object;
.source "ResourceFactory.java"

# interfaces
.implements Lcom/sun/prism/GraphicsResource;


# virtual methods
.method public abstract addFactoryListener(Lcom/sun/prism/ResourceFactoryListener;)V
.end method

.method public abstract createArcRep()Lcom/sun/prism/shape/ShapeRep;
.end method

.method public abstract createEllipseRep()Lcom/sun/prism/shape/ShapeRep;
.end method

.method public abstract createFloatTexture(II)Lcom/sun/prism/Texture;
.end method

.method public abstract createMaskTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;
.end method

.method public abstract createMesh()Lcom/sun/prism/Mesh;
.end method

.method public abstract createMeshView(Lcom/sun/prism/Mesh;)Lcom/sun/prism/MeshView;
.end method

.method public abstract createPathRep()Lcom/sun/prism/shape/ShapeRep;
.end method

.method public abstract createPhongMaterial()Lcom/sun/prism/PhongMaterial;
.end method

.method public abstract createPresentable(Lcom/sun/prism/PresentableState;)Lcom/sun/prism/Presentable;
.end method

.method public abstract createRTTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/RTTexture;
.end method

.method public abstract createRTTexture(IILcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/RTTexture;
.end method

.method public abstract createRoundRectRep()Lcom/sun/prism/shape/ShapeRep;
.end method

.method public abstract createTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;
.end method

.method public abstract createTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/Texture;
.end method

.method public abstract createTexture(Lcom/sun/prism/MediaFrame;)Lcom/sun/prism/Texture;
.end method

.method public abstract createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;II)Lcom/sun/prism/Texture;
.end method

.method public abstract createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;IIZ)Lcom/sun/prism/Texture;
.end method

.method public abstract createVertexBuffer(I)Lcom/sun/prism/impl/VertexBuffer;
.end method

.method public abstract dispose()V
.end method

.method public abstract getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;
.end method

.method public abstract getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/Texture;
.end method

.method public abstract getGlyphTexture()Lcom/sun/prism/Texture;
.end method

.method public abstract getMaximumTextureSize()I
.end method

.method public abstract getRTTHeight(ILcom/sun/prism/Texture$WrapMode;)I
.end method

.method public abstract getRTTWidth(ILcom/sun/prism/Texture$WrapMode;)I
.end method

.method public abstract getRegionTexture()Lcom/sun/prism/Texture;
.end method

.method public abstract getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;
.end method

.method public abstract isCompatibleTexture(Lcom/sun/prism/Texture;)Z
.end method

.method public abstract isDeviceReady()Z
.end method

.method public abstract isFormatSupported(Lcom/sun/prism/PixelFormat;)Z
.end method

.method public abstract isSuperShaderAllowed()Z
.end method

.method public abstract isWrapModeSupported(Lcom/sun/prism/Texture$WrapMode;)Z
.end method

.method public abstract removeFactoryListener(Lcom/sun/prism/ResourceFactoryListener;)V
.end method

.method public abstract setGlyphTexture(Lcom/sun/prism/Texture;)V
.end method

.method public abstract setRegionTexture(Lcom/sun/prism/Texture;)V
.end method
