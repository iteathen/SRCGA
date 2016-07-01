.class public abstract Lcom/sun/javafx/tk/FontLoader;
.super Ljava/lang/Object;
.source "FontLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/FontLoader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract computeStringWidth(Ljava/lang/String;Ljavafx/scene/text/Font;)F
.end method

.method public abstract font(Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;F)Ljavafx/scene/text/Font;
.end method

.method public abstract getFamilies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFontMetrics(Ljavafx/scene/text/Font;)Lcom/sun/javafx/tk/FontMetrics;
.end method

.method public abstract getFontNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFontNames(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSystemFontSize()F
.end method

.method public abstract loadFont(Ljava/io/InputStream;D)Ljavafx/scene/text/Font;
.end method

.method public abstract loadFont(Ljava/lang/String;D)Ljavafx/scene/text/Font;
.end method

.method public abstract loadFont(Ljavafx/scene/text/Font;)V
.end method
