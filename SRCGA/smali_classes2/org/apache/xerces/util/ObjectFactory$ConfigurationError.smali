.class public Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;
.super Ljava/lang/Error;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigurationError"
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x":Ljava/lang/Exception;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 405
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    .line 406
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;->exception:Ljava/lang/Exception;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;
    return-object v0
.end method
