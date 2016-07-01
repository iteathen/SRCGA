.class public Lcom/sun/glass/events/SwipeGesture;
.super Ljava/lang/Object;
.source "SwipeGesture.java"


# static fields
.field public static final DIR_DOWN:I = 0x2

.field public static final DIR_LEFT:I = 0x3

.field public static final DIR_RIGHT:I = 0x4

.field public static final DIR_UP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/events/SwipeGesture;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
