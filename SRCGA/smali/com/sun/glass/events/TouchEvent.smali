.class public Lcom/sun/glass/events/TouchEvent;
.super Ljava/lang/Object;
.source "TouchEvent.java"


# static fields
.field public static final TOUCH_MOVED:I = 0x32c

.field public static final TOUCH_PRESSED:I = 0x32b

.field public static final TOUCH_RELEASED:I = 0x32d

.field public static final TOUCH_STILL:I = 0x32e


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/events/TouchEvent;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
