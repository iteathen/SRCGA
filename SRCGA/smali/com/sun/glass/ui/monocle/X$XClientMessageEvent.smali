.class Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;
.super Lcom/sun/glass/ui/monocle/X$XEvent;
.source "X.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XClientMessageEvent"
.end annotation


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/X$XEvent;)V
    .locals 6

    .prologue
    .line 160
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/X$XClientMessageEvent;
    move-object v2, p1

    .local v2, "event":Lcom/sun/glass/ui/monocle/X$XEvent;
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/X$XEvent;->p:J

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/X$XEvent;-><init>(J)V

    .line 161
    return-void
.end method

.method static native setDataLong(JIJ)V
.end method

.method static native setFormat(JJ)V
.end method

.method static native setMessageType(JJ)V
.end method
