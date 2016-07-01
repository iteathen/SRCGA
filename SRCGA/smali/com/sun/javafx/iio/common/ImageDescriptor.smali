.class public Lcom/sun/javafx/iio/common/ImageDescriptor;
.super Ljava/lang/Object;
.source "ImageDescriptor.java"

# interfaces
.implements Lcom/sun/javafx/iio/ImageFormatDescription;


# instance fields
.field private final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final formatName:Ljava/lang/String;

.field private final signatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/iio/ImageFormatDescription$Signature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Lcom/sun/javafx/iio/ImageFormatDescription$Signature;)V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/ImageDescriptor;
    move-object v1, p1

    .local v1, "formatName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "extensions":[Ljava/lang/String;
    move-object v3, p3

    .local v3, "signatures":[Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/iio/common/ImageDescriptor;->formatName:Ljava/lang/String;

    .line 41
    move-object v4, v0

    move-object v5, v2

    .line 42
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 41
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/iio/common/ImageDescriptor;->extensions:Ljava/util/List;

    .line 43
    move-object v4, v0

    move-object v5, v3

    .line 44
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 43
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/iio/common/ImageDescriptor;->signatures:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public getExtensions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/ImageDescriptor;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/common/ImageDescriptor;->extensions:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/common/ImageDescriptor;
    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/ImageDescriptor;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/common/ImageDescriptor;->formatName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/common/ImageDescriptor;
    return-object v0
.end method

.method public getSignatures()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/iio/ImageFormatDescription$Signature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/ImageDescriptor;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/common/ImageDescriptor;->signatures:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/common/ImageDescriptor;
    return-object v0
.end method
