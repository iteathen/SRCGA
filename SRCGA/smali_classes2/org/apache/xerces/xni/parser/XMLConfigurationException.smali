.class public Lorg/apache/xerces/xni/parser/XMLConfigurationException;
.super Lorg/apache/xerces/xni/XNIException;
.source "XMLConfigurationException.java"


# static fields
.field public static final NOT_RECOGNIZED:S = 0x0s

.field public static final NOT_SUPPORTED:S = 0x1s


# instance fields
.field protected fIdentifier:Ljava/lang/String;

.field protected fType:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 5

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move v1, p1

    .local v1, "type":S
    move-object v2, p2

    .local v2, "identifier":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    .line 112
    move-object v3, v0

    move v4, v1

    iput-short v4, v3, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->fType:S

    .line 113
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->fIdentifier:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move v1, p1

    .local v1, "type":S
    move-object v2, p2

    .local v2, "identifier":Ljava/lang/String;
    move-object v3, p3

    .local v3, "message":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    .line 130
    move-object v4, v0

    move v5, v1

    iput-short v5, v4, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->fType:S

    .line 131
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->fIdentifier:Ljava/lang/String;

    .line 132
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->fIdentifier:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    return-object v0
.end method

.method public getType()S
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->fType:S

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    return v0
.end method
