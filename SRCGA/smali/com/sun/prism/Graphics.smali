.class public interface abstract Lcom/sun/prism/Graphics;
.super Ljava/lang/Object;
.source "Graphics.java"


# virtual methods
.method public abstract blit(Lcom/sun/prism/RTTexture;Lcom/sun/prism/RTTexture;IIIIIIII)V
.end method

.method public abstract clear()V
.end method

.method public abstract clear(Lcom/sun/prism/paint/Color;)V
.end method

.method public abstract clearQuad(FFFF)V
.end method

.method public abstract draw(Lcom/sun/javafx/geom/Shape;)V
.end method

.method public abstract drawEllipse(FFFF)V
.end method

.method public abstract drawLine(FFFF)V
.end method

.method public abstract drawMappedTextureRaw(Lcom/sun/prism/Texture;FFFFFFFFFFFF)V
.end method

.method public abstract drawRect(FFFF)V
.end method

.method public abstract drawRoundRect(FFFFFF)V
.end method

.method public abstract drawString(Lcom/sun/javafx/scene/text/GlyphList;Lcom/sun/javafx/font/FontStrike;FFLcom/sun/prism/paint/Color;II)V
.end method

.method public abstract drawTexture(Lcom/sun/prism/Texture;FFFF)V
.end method

.method public abstract drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V
.end method

.method public abstract drawTexture3SliceH(Lcom/sun/prism/Texture;FFFFFFFFFFFF)V
.end method

.method public abstract drawTexture3SliceV(Lcom/sun/prism/Texture;FFFFFFFFFFFF)V
.end method

.method public abstract drawTexture9Slice(Lcom/sun/prism/Texture;FFFFFFFFFFFFFFFF)V
.end method

.method public abstract drawTextureRaw(Lcom/sun/prism/Texture;FFFFFFFF)V
.end method

.method public abstract drawTextureVO(Lcom/sun/prism/Texture;FFFFFFFFFF)V
.end method

.method public abstract fill(Lcom/sun/javafx/geom/Shape;)V
.end method

.method public abstract fillEllipse(FFFF)V
.end method

.method public abstract fillQuad(FFFF)V
.end method

.method public abstract fillRect(FFFF)V
.end method

.method public abstract fillRoundRect(FFFFFF)V
.end method

.method public abstract getAssociatedScreen()Lcom/sun/glass/ui/Screen;
.end method

.method public abstract getCameraNoClone()Lcom/sun/javafx/sg/prism/NGCamera;
.end method

.method public abstract getClipRect()Lcom/sun/javafx/geom/Rectangle;
.end method

.method public abstract getClipRectIndex()I
.end method

.method public abstract getClipRectNoClone()Lcom/sun/javafx/geom/Rectangle;
.end method

.method public abstract getCompositeMode()Lcom/sun/prism/CompositeMode;
.end method

.method public abstract getExtraAlpha()F
.end method

.method public abstract getFinalClipNoClone()Lcom/sun/javafx/geom/RectBounds;
.end method

.method public abstract getLights()[Lcom/sun/javafx/sg/prism/NGLightBase;
.end method

.method public abstract getPaint()Lcom/sun/prism/paint/Paint;
.end method

.method public abstract getPixelScaleFactor()F
.end method

.method public abstract getRenderRoot()Lcom/sun/javafx/sg/prism/NodePath;
.end method

.method public abstract getRenderTarget()Lcom/sun/prism/RenderTarget;
.end method

.method public abstract getResourceFactory()Lcom/sun/prism/ResourceFactory;
.end method

.method public abstract getStroke()Lcom/sun/prism/BasicStroke;
.end method

.method public abstract getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;
.end method

.method public abstract hasPreCullingBits()Z
.end method

.method public abstract isAlphaTestShader()Z
.end method

.method public abstract isAntialiasedShape()Z
.end method

.method public abstract isDepthBuffer()Z
.end method

.method public abstract isDepthTest()Z
.end method

.method public abstract isState3D()Z
.end method

.method public abstract scale(FF)V
.end method

.method public abstract scale(FFF)V
.end method

.method public abstract setAntialiasedShape(Z)V
.end method

.method public abstract setCamera(Lcom/sun/javafx/sg/prism/NGCamera;)V
.end method

.method public abstract setClipRect(Lcom/sun/javafx/geom/Rectangle;)V
.end method

.method public abstract setClipRectIndex(I)V
.end method

.method public abstract setCompositeMode(Lcom/sun/prism/CompositeMode;)V
.end method

.method public abstract setDepthBuffer(Z)V
.end method

.method public abstract setDepthTest(Z)V
.end method

.method public abstract setExtraAlpha(F)V
.end method

.method public abstract setHasPreCullingBits(Z)V
.end method

.method public abstract setLights([Lcom/sun/javafx/sg/prism/NGLightBase;)V
.end method

.method public abstract setNodeBounds(Lcom/sun/javafx/geom/RectBounds;)V
.end method

.method public abstract setPaint(Lcom/sun/prism/paint/Paint;)V
.end method

.method public abstract setPixelScaleFactor(F)V
.end method

.method public abstract setRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;)V
.end method

.method public abstract setState3D(Z)V
.end method

.method public abstract setStroke(Lcom/sun/prism/BasicStroke;)V
.end method

.method public abstract setTransform(DDDDDD)V
.end method

.method public abstract setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
.end method

.method public abstract setTransform3D(DDDDDDDDDDDD)V
.end method

.method public abstract setup3DRendering()V
.end method

.method public abstract sync()V
.end method

.method public abstract transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
.end method

.method public abstract translate(FF)V
.end method

.method public abstract translate(FFF)V
.end method
