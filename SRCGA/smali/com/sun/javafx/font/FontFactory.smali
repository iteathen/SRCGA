.class public interface abstract Lcom/sun/javafx/font/FontFactory;
.super Ljava/lang/Object;
.source "FontFactory.java"


# static fields
.field public static final DEFAULT_FULLNAME:Ljava/lang/String; = "System Regular"


# virtual methods
.method public abstract createFont(Ljava/lang/String;F)Lcom/sun/javafx/font/PGFont;
.end method

.method public abstract createFont(Ljava/lang/String;ZZF)Lcom/sun/javafx/font/PGFont;
.end method

.method public abstract deriveFont(Lcom/sun/javafx/font/PGFont;ZZF)Lcom/sun/javafx/font/PGFont;
.end method

.method public abstract getFontFamilyNames()[Ljava/lang/String;
.end method

.method public abstract getFontFullNames()[Ljava/lang/String;
.end method

.method public abstract getFontFullNames(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract hasPermission()Z
.end method

.method public abstract isPlatformFont(Ljava/lang/String;)Z
.end method

.method public abstract loadEmbeddedFont(Ljava/lang/String;Ljava/io/InputStream;FZ)Lcom/sun/javafx/font/PGFont;
.end method

.method public abstract loadEmbeddedFont(Ljava/lang/String;Ljava/lang/String;FZ)Lcom/sun/javafx/font/PGFont;
.end method
