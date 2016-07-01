.class public final Lcom/sun/javafx/stage/ScreenHelper;
.super Ljava/lang/Object;
.source "ScreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/stage/ScreenHelper$ScreenAccessor;
    }
.end annotation


# static fields
.field private static screenAccessor:Lcom/sun/javafx/stage/ScreenHelper$ScreenAccessor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/ScreenHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenAccessor()Lcom/sun/javafx/stage/ScreenHelper$ScreenAccessor;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/sun/javafx/stage/ScreenHelper;->screenAccessor:Lcom/sun/javafx/stage/ScreenHelper$ScreenAccessor;

    return-object v0
.end method

.method public static setScreenAccessor(Lcom/sun/javafx/stage/ScreenHelper$ScreenAccessor;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "a":Lcom/sun/javafx/stage/ScreenHelper$ScreenAccessor;
    sget-object v1, Lcom/sun/javafx/stage/ScreenHelper;->screenAccessor:Lcom/sun/javafx/stage/ScreenHelper$ScreenAccessor;

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 46
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/stage/ScreenHelper;->screenAccessor:Lcom/sun/javafx/stage/ScreenHelper$ScreenAccessor;

    .line 47
    return-void
.end method
