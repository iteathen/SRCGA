.class Lcom/sun/javafx/font/CMap$CMapFormat8;
.super Lcom/sun/javafx/font/CMap;
.source "CMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CMapFormat8"
.end annotation


# direct methods
.method constructor <init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V
    .locals 4

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap$CMapFormat8;
    move-object v1, p1

    .local v1, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/font/CMap;-><init>()V

    .line 454
    return-void
.end method


# virtual methods
.method getGlyph(I)C
    .locals 3

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap$CMapFormat8;
    move v1, p1

    .local v1, "charCode":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/CMap$CMapFormat8;
    return v0
.end method
