.class public abstract Ljava/util/spi/LocaleServiceProvider;
.super Ljava/lang/Object;
.source "LocaleServiceProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Ljava/util/spi/LocaleServiceProvider;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAvailableLocales()[Ljava/util/Locale;
.end method
