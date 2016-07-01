.class public Lcom/sun/glass/events/MouseEvent;
.super Ljava/lang/Object;
.source "MouseEvent.java"


# static fields
.field public static final BUTTON_LEFT:I = 0xd4

.field public static final BUTTON_NONE:I = 0xd3

.field public static final BUTTON_OTHER:I = 0xd6

.field public static final BUTTON_RIGHT:I = 0xd5

.field public static final CLICK:I = 0xe3

.field public static final DOWN:I = 0xdd

.field public static final DRAG:I = 0xdf

.field public static final ENTER:I = 0xe1

.field public static final EXIT:I = 0xe2

.field public static final MOVE:I = 0xe0

.field public static final UP:I = 0xde

.field public static final WHEEL:I = 0xe4


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/events/MouseEvent;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
