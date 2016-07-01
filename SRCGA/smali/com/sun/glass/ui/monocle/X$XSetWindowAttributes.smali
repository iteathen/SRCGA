.class Lcom/sun/glass/ui/monocle/X$XSetWindowAttributes;
.super Lcom/sun/glass/ui/monocle/C$Structure;
.source "X.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XSetWindowAttributes"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X$XSetWindowAttributes;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/C$Structure;-><init>()V

    return-void
.end method

.method static native setCursor(JJ)V
.end method

.method static native setEventMask(JJ)V
.end method

.method static native setOverrideRedirect(JZ)V
.end method


# virtual methods
.method native sizeof()I
.end method
