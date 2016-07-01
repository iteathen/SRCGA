.class Lcom/sun/glass/ui/monocle/X$XDisplay;
.super Lcom/sun/glass/ui/monocle/C$Structure;
.source "X.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XDisplay"
.end annotation


# direct methods
.method constructor <init>(J)V
    .locals 7

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X$XDisplay;
    move-wide v1, p1

    .local v1, "p":J
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/C$Structure;-><init>(J)V

    .line 173
    return-void
.end method


# virtual methods
.method native sizeof()I
.end method
