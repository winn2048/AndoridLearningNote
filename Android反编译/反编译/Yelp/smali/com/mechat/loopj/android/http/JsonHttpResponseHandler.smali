.class public Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;
.super Lcom/mechat/loopj/android/http/TextHttpResponseHandler;
.source "JsonHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JsonHttpResponseHandler"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/mechat/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/mechat/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseString"
    .parameter "throwable"

    .prologue
    .line 131
    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onFailure(int, Header[], String, Throwable) was not overriden, but callback was received"

    invoke-static {v0, v1, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 2
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 125
    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onFailure(int, Header[], Throwable, JSONArray) was not overriden, but callback was received"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 2
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 108
    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onFailure(int, Header[], Throwable, JSONObject) was not overriden, but callback was received"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    return-void
.end method

.method public final onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 6
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBytes"
    .parameter "throwable"

    .prologue
    .line 188
    if-eqz p3, :cond_1

    .line 189
    new-instance v0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;-><init>(Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;[BI[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    .line 221
    .local v0, parser:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 230
    .end local v0           #parser:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 225
    .restart local v0       #parser:Ljava/lang/Runnable;
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 227
    .end local v0           #parser:Ljava/lang/Runnable;
    :cond_1
    const-string v1, "JsonHttpResponseHandler"

    const-string v2, "response body is null, calling onFailure(Throwable, JSONObject)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 2
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseString"

    .prologue
    .line 137
    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onSuccess(int, Header[], String) was not overriden, but callback was received"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 2
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 92
    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onSuccess(int, Header[], JSONArray) was not overriden, but callback was received"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 2
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 78
    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onSuccess(int, Header[], JSONObject) was not overriden, but callback was received"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBytes"

    .prologue
    .line 142
    const/16 v1, 0xcc

    if-eq p1, v1, :cond_1

    .line 143
    new-instance v0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;-><init>(Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;[BI[Lorg/apache/http/Header;)V

    .line 175
    .local v0, parser:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 183
    .end local v0           #parser:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 179
    .restart local v0       #parser:Ljava/lang/Runnable;
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 181
    .end local v0           #parser:Ljava/lang/Runnable;
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2, v1}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected parseResponse([B)Ljava/lang/Object;
    .locals 3
    .parameter "responseBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 244
    if-nez p1, :cond_1

    .line 245
    const/4 v1, 0x0

    .line 260
    :cond_0
    :goto_0
    return-object v1

    .line 246
    :cond_1
    const/4 v1, 0x0

    .line 250
    .local v1, result:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, jsonString:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 254
    :cond_2
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 257
    .end local v1           #result:Ljava/lang/Object;
    :cond_3
    if-nez v1, :cond_0

    .line 258
    move-object v1, v0

    .local v1, result:Ljava/lang/String;
    goto :goto_0
.end method
