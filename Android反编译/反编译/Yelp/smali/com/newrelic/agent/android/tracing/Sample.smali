.class public Lcom/newrelic/agent/android/tracing/Sample;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "Sample.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/tracing/Sample$SampleType;
    }
.end annotation


# instance fields
.field private sampleValue:Lcom/newrelic/agent/android/tracing/SampleValue;

.field private timestamp:J

.field private type:Lcom/newrelic/agent/android/tracing/Sample$SampleType;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter "timestamp"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/agent/android/tracing/Sample;->setTimestamp(J)V

    .line 25
    return-void
.end method

.method public constructor <init>(JLcom/newrelic/agent/android/tracing/SampleValue;)V
    .locals 1
    .parameter "timestamp"
    .parameter "sampleValue"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/agent/android/tracing/Sample;->setTimestamp(J)V

    .line 29
    invoke-virtual {p0, p3}, Lcom/newrelic/agent/android/tracing/Sample;->setSampleValue(Lcom/newrelic/agent/android/tracing/SampleValue;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/tracing/Sample;->setSampleType(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/tracing/Sample;->setTimestamp(J)V

    .line 21
    return-void
.end method


# virtual methods
.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 72
    .local v0, jsonArray:Lcom/newrelic/com/google/gson/JsonArray;
    iget-wide v2, p0, Lcom/newrelic/agent/android/tracing/Sample;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/Number;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 73
    iget-object v1, p0, Lcom/newrelic/agent/android/tracing/Sample;->sampleValue:Lcom/newrelic/agent/android/tracing/SampleValue;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/tracing/SampleValue;->getValue()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/Number;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 75
    return-object v0
.end method

.method public getSampleType()Lcom/newrelic/agent/android/tracing/Sample$SampleType;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Sample;->type:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    return-object v0
.end method

.method public getSampleValue()Lcom/newrelic/agent/android/tracing/SampleValue;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Sample;->sampleValue:Lcom/newrelic/agent/android/tracing/SampleValue;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/newrelic/agent/android/tracing/Sample;->timestamp:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Sample;->sampleValue:Lcom/newrelic/agent/android/tracing/SampleValue;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/SampleValue;->getValue()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public setSampleType(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/newrelic/agent/android/tracing/Sample;->type:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    .line 66
    return-void
.end method

.method public setSampleValue(D)V
    .locals 1
    .parameter "value"

    .prologue
    .line 49
    new-instance v0, Lcom/newrelic/agent/android/tracing/SampleValue;

    invoke-direct {v0, p1, p2}, Lcom/newrelic/agent/android/tracing/SampleValue;-><init>(D)V

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/Sample;->sampleValue:Lcom/newrelic/agent/android/tracing/SampleValue;

    .line 50
    return-void
.end method

.method public setSampleValue(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    new-instance v0, Lcom/newrelic/agent/android/tracing/SampleValue;

    invoke-direct {v0, p1, p2}, Lcom/newrelic/agent/android/tracing/SampleValue;-><init>(J)V

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/Sample;->sampleValue:Lcom/newrelic/agent/android/tracing/SampleValue;

    .line 54
    return-void
.end method

.method public setSampleValue(Lcom/newrelic/agent/android/tracing/SampleValue;)V
    .locals 0
    .parameter "sampleValue"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/newrelic/agent/android/tracing/Sample;->sampleValue:Lcom/newrelic/agent/android/tracing/SampleValue;

    .line 46
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .parameter "timestamp"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/newrelic/agent/android/tracing/Sample;->timestamp:J

    .line 38
    return-void
.end method
