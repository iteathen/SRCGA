.class final Lcom/sun/glass/ui/Window$State;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# static fields
.field private static final MAXIMIZED:I = 0x3

.field private static final MINIMIZED:I = 0x2

.field private static final NORMAL:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$State;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
