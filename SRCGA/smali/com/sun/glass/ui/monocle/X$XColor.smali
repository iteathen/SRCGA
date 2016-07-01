.class Lcom/sun/glass/ui/monocle/X$XColor;
.super Lcom/sun/glass/ui/monocle/C$Structure;
.source "X.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XColor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X$XColor;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/C$Structure;-><init>()V

    return-void
.end method


# virtual methods
.method native setBlue(JI)V
.end method

.method native setGreen(JI)V
.end method

.method native setRed(JI)V
.end method

.method native sizeof()I
.end method
