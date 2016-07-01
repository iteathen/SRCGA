.class public Lcom/sun/glass/events/GestureEvent;
.super Ljava/lang/Object;
.source "GestureEvent.java"


# static fields
.field public static final GESTURE_FINISHED:I = 0x3

.field public static final GESTURE_PERFORMED:I = 0x2

.field public static final GESTURE_STARTED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/events/GestureEvent;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
