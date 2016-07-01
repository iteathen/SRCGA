.class public Lcom/sun/glass/ui/Pixels$Format;
.super Ljava/lang/Object;
.source "Pixels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Pixels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Format"
.end annotation


# static fields
.field public static final BYTE_ARGB:I = 0x2

.field public static final BYTE_BGRA_PRE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels$Format;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
