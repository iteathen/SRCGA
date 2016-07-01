.class public interface abstract Lcom/sun/javafx/font/FontResource;
.super Ljava/lang/Object;
.source "FontResource.java"


# static fields
.field public static final AA_GREYSCALE:I = 0x0

.field public static final AA_LCD:I = 0x1

.field public static final AFRC:I = 0x100

.field public static final CLIG:I = 0x2

.field public static final CSWH:I = 0x800

.field public static final DLIG:I = 0x4

.field public static final FRAC:I = 0x80

.field public static final HLIG:I = 0x8

.field public static final KERN:I = 0x1

.field public static final LIGA:I = 0x10

.field public static final LIGATURES:I = 0x3e

.field public static final NALT:I = 0x2000

.field public static final RLIG:I = 0x20

.field public static final RUBY:I = 0x4000

.field public static final SALT:I = 0x1000

.field public static final SMCP:I = 0x40

.field public static final SS01:I = 0x8000

.field public static final SS02:I = 0x10000

.field public static final SS03:I = 0x20000

.field public static final SS04:I = 0x40000

.field public static final SS05:I = 0x80000

.field public static final SS06:I = 0x100000

.field public static final SS07:I = 0x200000

.field public static final SWSH:I = 0x400

.field public static final ZERO:I = 0x200


# virtual methods
.method public abstract getAdvance(IF)F
.end method

.method public abstract getDefaultAAMode()I
.end method

.method public abstract getFamilyName()Ljava/lang/String;
.end method

.method public abstract getFeatures()I
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getGlyphBoundingBox(IF[F)[F
.end method

.method public abstract getGlyphMapper()Lcom/sun/javafx/font/CharToGlyphMapper;
.end method

.method public abstract getLocaleFamilyName()Ljava/lang/String;
.end method

.method public abstract getLocaleFullName()Ljava/lang/String;
.end method

.method public abstract getLocaleStyleName()Ljava/lang/String;
.end method

.method public abstract getPSName()Ljava/lang/String;
.end method

.method public abstract getPeer()Ljava/lang/Object;
.end method

.method public abstract getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;
.end method

.method public abstract getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;
.end method

.method public abstract getStrikeMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/font/FontStrikeDesc;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/javafx/font/FontStrike;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getStyleName()Ljava/lang/String;
.end method

.method public abstract isBold()Z
.end method

.method public abstract isEmbeddedFont()Z
.end method

.method public abstract isItalic()Z
.end method

.method public abstract setPeer(Ljava/lang/Object;)V
.end method
