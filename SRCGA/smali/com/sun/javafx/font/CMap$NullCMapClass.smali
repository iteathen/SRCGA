.class Lcom/sun/javafx/font/CMap$NullCMapClass;
.super Lcom/sun/javafx/font/CMap;
.source "CMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/CMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NullCMapClass"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap$NullCMapClass;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/CMap;-><init>()V

    return-void
.end method


# virtual methods
.method getGlyph(I)C
    .locals 3

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap$NullCMapClass;
    move v1, p1

    .local v1, "charCode":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/CMap$NullCMapClass;
    return v0
.end method
