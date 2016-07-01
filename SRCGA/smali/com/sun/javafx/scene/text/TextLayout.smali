.class public interface abstract Lcom/sun/javafx/scene/text/TextLayout;
.super Ljava/lang/Object;
.source "TextLayout.java"


# static fields
.field public static final ALIGN_CENTER:I = 0x80000

.field public static final ALIGN_JUSTIFY:I = 0x200000

.field public static final ALIGN_LEFT:I = 0x40000

.field public static final ALIGN_MASK:I = 0x3c0000

.field public static final ALIGN_RIGHT:I = 0x100000

.field public static final ANALYSIS_MASK:I = 0x7ff

.field public static final BOUNDS_CENTER:I = 0x4000

.field public static final BOUNDS_MASK:I = 0x4000

.field public static final DIRECTION_DEFAULT_LTR:I = 0x1000

.field public static final DIRECTION_DEFAULT_RTL:I = 0x2000

.field public static final DIRECTION_LTR:I = 0x400

.field public static final DIRECTION_MASK:I = 0x3c00

.field public static final DIRECTION_RTL:I = 0x800

.field public static final FLAGS_ANALYSIS_VALID:I = 0x2

.field public static final FLAGS_CACHED_STRIKETHROUGH:I = 0x400

.field public static final FLAGS_CACHED_UNDERLINE:I = 0x200

.field public static final FLAGS_HAS_BIDI:I = 0x8

.field public static final FLAGS_HAS_CJK:I = 0x40

.field public static final FLAGS_HAS_COMPLEX:I = 0x10

.field public static final FLAGS_HAS_EMBEDDED:I = 0x20

.field public static final FLAGS_HAS_TABS:I = 0x4

.field public static final FLAGS_LAST:I = 0x800

.field public static final FLAGS_LINES_VALID:I = 0x1

.field public static final FLAGS_RTL_BASE:I = 0x100

.field public static final FLAGS_WRAPPED:I = 0x80

.field public static final TYPE_BASELINE:I = 0x8

.field public static final TYPE_BEARINGS:I = 0x20

.field public static final TYPE_STRIKETHROUGH:I = 0x4

.field public static final TYPE_TEXT:I = 0x1

.field public static final TYPE_TOP:I = 0x10

.field public static final TYPE_UNDERLINE:I = 0x2


# virtual methods
.method public abstract getBounds()Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract getBounds(Lcom/sun/javafx/scene/text/TextSpan;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract getCaretShape(IZFF)[Ljavafx/scene/shape/PathElement;
.end method

.method public abstract getHitInfo(FF)Lcom/sun/javafx/scene/text/HitInfo;
.end method

.method public abstract getLines()[Lcom/sun/javafx/scene/text/TextLine;
.end method

.method public abstract getRange(IIIFF)[Ljavafx/scene/shape/PathElement;
.end method

.method public abstract getRuns()[Lcom/sun/javafx/scene/text/GlyphList;
.end method

.method public abstract getShape(ILcom/sun/javafx/scene/text/TextSpan;)Lcom/sun/javafx/geom/Shape;
.end method

.method public abstract getVisualBounds(I)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract setAlignment(I)Z
.end method

.method public abstract setBoundsType(I)Z
.end method

.method public abstract setContent(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract setContent([Lcom/sun/javafx/scene/text/TextSpan;)Z
.end method

.method public abstract setDirection(I)Z
.end method

.method public abstract setLineSpacing(F)Z
.end method

.method public abstract setWrapWidth(F)Z
.end method
