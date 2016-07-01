.class Ljavafx/scene/input/KeyCode$KeyCodeClass;
.super Ljava/lang/Object;
.source "KeyCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/input/KeyCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyCodeClass"
.end annotation


# static fields
.field private static final ARROW:I = 0x4

.field private static final DIGIT:I = 0x20

.field private static final FUNCTION:I = 0x1

.field private static final KEYPAD:I = 0x40

.field private static final LETTER:I = 0x10

.field private static final MEDIA:I = 0x100

.field private static final MODIFIER:I = 0x8

.field private static final NAVIGATION:I = 0x2

.field private static final WHITESPACE:I = 0x80


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCode$KeyCodeClass;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
