.class public final Lcom/sun/glass/ui/Window$Level;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Level"
.end annotation


# static fields
.field public static final FLOATING:I = 0x2

.field public static final NORMAL:I = 0x1

.field public static final TOPMOST:I = 0x3

.field private static final _MAX:I = 0x3

.field private static final _MIN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$Level;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
