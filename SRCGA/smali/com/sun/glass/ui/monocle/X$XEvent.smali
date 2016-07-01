.class Lcom/sun/glass/ui/monocle/X$XEvent;
.super Lcom/sun/glass/ui/monocle/C$Structure;
.source "X.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XEvent"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X$XEvent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/C$Structure;-><init>()V

    .line 120
    return-void
.end method

.method constructor <init>(J)V
    .locals 7

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X$XEvent;
    move-wide v1, p1

    .local v1, "p":J
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/C$Structure;-><init>(J)V

    .line 117
    return-void
.end method

.method static native getType(J)I
.end method

.method static native getWindow(J)J
.end method

.method static native setWindow(JJ)V
.end method


# virtual methods
.method native sizeof()I
.end method
